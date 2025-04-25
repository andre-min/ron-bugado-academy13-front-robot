*** Variables ***
${logo_home}                          //*[@class='css-18le3pj']
${input_mail}                         id=email
${input_password}                     id=password
${btn_entrar}                         //button[contains(text(), Entrar)]
${h1_login}                           //h1[contains(.,'Login')]


${company_name}                       id=companyName
${company_fantasy_name}               id=fantasyName
${company_mail}                       id=companyMail
${company_cnpj}                       id=matriz
${company_Telephone}                  id=telephone
${company_service_description}        id=serviceDescription
${company_fullName_responsible}       id=fullName
${zipCode}                            id=zipCode
${country}                            id=country
${city}                               id=city
${state}                              id=state
${district}                           id=district
${street}                             id=street
${number}                             id=number
${complement}                         id=complement
${btn_save}                           id=save
${btn_cancel}                         id=cancel
${fullName}                           id=fullName
${birthDate}                          id=birthDate
${mail}                               id=mail
${telephone}                          id=phone
${currentRole}                        id=currentRole
${rg}                                 name=rg
${cpf}                                name=cpf
${accessProfile}                      id=accessProfile
${password}                           id=password
${confirmPassword}                    id=confirmPassword

${costCenterName}                     id=costCenterName
${departamentName}                    id=departmentName





# Login message error
${msg_error}                  class=MuiAlert-message           #class=MuiAlert-standardError
${msg_obrig_mail}            //p[contains(., 'O email é obrigatório')]
${msg_obrig_password}        //p[contains(., 'A senha é obrigatória')]

