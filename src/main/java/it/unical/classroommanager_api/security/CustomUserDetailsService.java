package it.unical.classroommanager_api.security;

import it.unical.classroommanager_api.configuration.i18n.MessageLang;
import it.unical.classroommanager_api.dto.UserDto;
import it.unical.classroommanager_api.service.CService.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class CustomUserDetailsService implements UserDetailsService {

    @Autowired
    private UserService userService;

    @Autowired
    private MessageLang messageLang;

    @Override
    public UserDetails loadUserByUsername(String serialNumber) throws UsernameNotFoundException {
        UserDto userDto = userService.findBySerialNumber(Integer.parseInt(serialNumber));
        if (userDto == null) {
            throw new UsernameNotFoundException(messageLang.getMessage("credentials.not.valid"));
        } else {
            return userDto;
        }
    }
}
